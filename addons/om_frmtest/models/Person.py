from odoo import api, fields, models

class Person(models.Model):
    _name = "frmtest.person"
    _description = "Registro de Personas"
    _rec_name = 'first_name'

    first_name = fields.Char(string="First Name",required=True, size=30)
    last_name = fields.Char(string="Last Name",required=True, size=30)
    date_of_birth = fields.Date(string="Date of Birth", required=True)
    
    age = fields.Char(string="edad")
