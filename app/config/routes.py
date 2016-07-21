"""
    Routes Configuration File

    Put Routing rules here
"""
from system.core.router import routes

routes['default_controller'] = 'Welcome'
routes['POST']['/courses/add'] = 'Courses#add'
routes['/courses/destroy_confirm/<id>'] = 'Courses#destroy_confirm'
routes['/courses/destroy/<id>'] = 'Courses#destroy'
