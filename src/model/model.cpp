/**
 * @file       <model.cpp>
 * @brief      This source file holds implementation of Model class. 
 * 
 *             This calss implements model needed for successfull completion of laboratory work 1.
 *
 * @author     Alexander Chudnikov (THE_CHOODICK)
 * @date       15-02-2023
 * @version    0.0.1
 * 
 * @warning    This library is under development, so there might be some bugs in it.  
 * @bug        Currently, there are no any known bugs. 
 * 
 *             In order to submit new ones, please contact me via admin@redline-software.xyz.
 * 
 * @copyright  Copyright 2023 Alexander. All rights reserved. 
 * 
 *             (Not really)
 * 
 * @license    This project is released under the GNUv3 Public License.
 */
#include "model.hpp"

Model::Model(std::string full_name, std::string department, std::string job_title, std::chrono::year_month_day employment_date)
{
    this->set_model(full_name, department, job_title, employment_date);
}

Model::Model(std::string full_name, std::string department, std::string job_title, std::string employment_date)
{
    this->set_model(full_name, department, job_title, employment_date);
}

Model::Model(std::uint8_t decor_type)
{
    this->set_decor(decor_type);
}

Model::~Model()
{
    return;
}

void Model::set_model(std::string full_name, std::string department, std::string job_title, std::chrono::year_month_day employment_date)
{
    this->_full_name         = full_name;
    this->_department        = department;
    this->_job_title         = job_title;
    this->_employment_date   = employment_date;
    this->_decor_type        = 2; 
}

void Model::set_model(std::string full_name, std::string department, std::string job_title, std::string employment_date)
{
    std::vector<std::string> splitted_date;

    std::string buffer;

    for (std::size_t index = 0; index < 3; ++index)
    {
        splitted_date.push_back(employment_date.substr(0, employment_date.find('/')));
        employment_date = employment_date.substr(employment_date.find('/') + 1, employment_date.end() - employment_date.begin());
    }

    std::chrono::year_month_day parced_employment_date(std::chrono::year(std::stoi(splitted_date[0])), std::chrono::month(std::stoi(splitted_date[1])), std::chrono::day(std::stoi(splitted_date[2])));

    this->set_model(full_name, department, job_title, parced_employment_date);
}

void Model::set_decor(std::uint8_t decor_type)
{
    this->_decor_type = decor_type;
}

std::ostream& operator<< (std::ostream& stream, const Model& model)
{
    if (model._decor_type == 0)
    {
        stream << "║                           FULL  NAME                           ║                 DEPARTMENT                 ║                 JOB  TITLE                 ║    DATE    ║";
    }
    else if (model._decor_type <= 2)
    {
        stream << "║ "  << std::setfill(' ') << std::setw(62) 
                   << model._full_name
                   << " ║ " << std::setfill(' ') << std::setw(42)
                   << model._department
                   << " ║ " << std::setfill(' ') << std::setw(42)
                   << model._job_title
                   << " ║ " << std::setfill('0') << std::setw(4)
                   << static_cast<int>(model._employment_date.year())
                   << "/"  << std::setfill('0') << std::setw(2)
                   << static_cast<unsigned>(model._employment_date.month())
                   << "/"  << std::setfill('0') << std::setw(2)
                   << static_cast<unsigned>(model._employment_date.day()) << " ║";
    }

    if (model._decor_type != 1)
    {
        std::string left_decor;
        std::string right_decor;
        std::string middle_decor;

        switch (model._decor_type)
        {
        case 0:
        case 2:
            {
                stream << "\n";
                left_decor      = "╠";
                right_decor     = "╣";
                middle_decor    = "╬";
                break;
            }
        case 3:
            {
                left_decor      = "╔";
                right_decor     = "╗";
                middle_decor    = "╦";
                break;
            }
        default:
            {
                left_decor      = "╚";
                right_decor     = "╝";
                middle_decor    = "╩";
            }
        }

        stream << left_decor;

        for (std::size_t index = 0; index < 64; ++index)
        {
            stream << "═";
        }

        for (std::size_t index = 0; index < 2; ++index)
        {
            stream << middle_decor;

            for (std::size_t index_in = 0; index_in < 44; ++index_in)
            {
                stream << "═";
            }
        }

        stream << middle_decor;

        for (std::size_t index = 0; index < 12; ++index)
        {
            stream << "═";
        }

        stream << right_decor;
    }

    return stream;
}

ModelComp operator< (const Model& l_model, const Model& r_model)
{
    uint8_t name_comp = 1;
    uint8_t dept_comp = 1;
    uint8_t jobt_comp = 1;
    uint8_t date_comp = 1;

    uint8_t comp_result = l_model._full_name.compare(r_model._full_name);

    if (comp_result >= 0)
    {
        name_comp = 0;
    }

    comp_result = l_model._department.compare(r_model._department);

    if (comp_result >= 0)
    {
        dept_comp = 0;
    }

    comp_result = l_model._job_title.compare(r_model._job_title);

    if (comp_result >= 0)
    {
        jobt_comp = 0;
    }

    if (l_model._employment_date >= r_model._employment_date)
    {
        date_comp = 0;
    }
    ModelComp model_comp;
    model_comp.set_name_type(name_comp);
    model_comp.set_dept_type(dept_comp);
    model_comp.set_jobt_type(jobt_comp);
    model_comp.set_date_type(date_comp);

    return model_comp;
}

ModelComp operator> (const Model& l_model, const Model& r_model)
{
    return (r_model < l_model);
}

ModelComp operator<= (const Model& l_model, const Model& r_model)
{
    return !(r_model < l_model);
}

ModelComp operator>= (const Model& l_model, const Model& r_model)
{
    return !(l_model < r_model);
}

ModelComp operator== (const Model& l_model, const Model& r_model)
{
    uint8_t name_comp = 1;
    uint8_t dept_comp = 1;
    uint8_t jobt_comp = 1;
    uint8_t date_comp = 1;

    uint8_t comp_result = l_model._full_name.compare(r_model._full_name);

    if (comp_result != 0)
    {
        name_comp = 0;
    }

    comp_result = l_model._department.compare(r_model._department);

    if (comp_result != 0)
    {
        dept_comp = 0;
    }

    comp_result = l_model._job_title.compare(r_model._job_title);

    if (comp_result != 0)
    {
        jobt_comp = 0;
    }

    if (l_model._employment_date != r_model._employment_date)
    {
        date_comp = 0;
    }

    ModelComp model_comp;
    model_comp.set_name_type(name_comp);
    model_comp.set_dept_type(dept_comp);
    model_comp.set_jobt_type(jobt_comp);
    model_comp.set_date_type(date_comp);

    return model_comp;
}

ModelComp operator!= (const Model& l_model, const Model& r_model)
{
    return !(l_model == r_model);
}


ModelComp::ModelComp()
{
    this->_value = 0;
}

ModelComp::ModelComp(uint8_t value)
{
    this->_value = value;
}

ModelComp::~ModelComp()
{

}

void ModelComp::set_type_masked(uint8_t value, uint8_t offset)
{
    this->_value = ((value & 0b00000011) << offset) ^ this->_value;
    return;
}

void ModelComp::set_name_type(uint8_t value)
{
    this->set_type_masked(value, 0);
    return;
}

void ModelComp::set_dept_type(uint8_t value)
{
    this->set_type_masked(value << 2, 2);
    return;
}

void ModelComp::set_jobt_type(uint8_t value)
{
    this->set_type_masked(value << 4, 4);
    return;
}

void ModelComp::set_date_type(uint8_t value)
{
    this->set_type_masked(value << 6, 6);
    return;
}

uint8_t ModelComp::get_type_masked(uint8_t offset) const
{
    return (this->_value & (0b00000011 << offset)) >> offset;
}

uint8_t ModelComp::get_name_type() const
{
    return this->get_type_masked(0);
}

uint8_t ModelComp::get_dept_type() const
{
    return this->get_type_masked(2);
}

uint8_t ModelComp::get_jobt_type() const
{   
    return this->get_type_masked(4);
}

uint8_t ModelComp::get_date_type() const
{
    return this->get_type_masked(6);
}

ModelComp ModelComp::operator! () const
{
    ModelComp result(~this->_value);
    return result;
}

ModelComp operator== (const ModelComp& l_bool, const ModelComp& r_bool)
{
    ModelComp result(0);

    if (l_bool.get_name_type() == r_bool.get_name_type())
    {
        result.set_name_type(1);
    }

    if (l_bool.get_dept_type() == r_bool.get_dept_type())
    {
        result.set_dept_type(1);
    }

    if (l_bool.get_jobt_type() == r_bool.get_jobt_type())
    {
        result.set_jobt_type(1);
    }

    if (l_bool.get_date_type() == r_bool.get_date_type())
    {
        result.set_date_type(1);
    }

    return result;
}

ModelComp operator!= (const ModelComp& l_bool, const ModelComp& r_bool)
{
    return !(l_bool == r_bool);
}

std::ostream& operator<< (std::ostream& stream, const ModelComp& r_bool)
{
    stream << std::bitset<8>(r_bool._value);

    return stream;
}
