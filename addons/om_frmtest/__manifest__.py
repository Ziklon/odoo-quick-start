# -*- coding: utf-8 -*-
{
    'name': "om_frmtest",

    'summary': """
     Modulo Form Test   
    """,

    'description': """
        Customizando form components 
    """,

    'author': "    ",
    'website': "    ",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/15.0/odoo/addons/base/data/ir_module_category_data.xml
    # for the full list
    'category': 'Uncategorized',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': ['base'],

    # always loaded
    'data': [
      'views/person.xml',


      'views/menu.xml',
    ],
}
