"""
    Sample Controller File

    A Controller should be in charge of responding to a request.
    Load models to interact with the database and load views to render them to the client.

    Create a controller using this template
"""
from system.core.controller import *

class Courses(Controller):
    def __init__(self, action):
        super(Courses, self).__init__(action)
        """
        This is an example of loading a model.
        Every controller has access to the load_model method.
        """
        self.load_model('Course')
        self.db = self._app.db

        """

        This is an example of a controller method that will load a view for the client

        """

    def add(self):
        # get form info

        name = request.form['courseName']
        description = request.form['courseDescription']

        if len(name) < 15:
            flash("Please enter a course name that is longer than 15 characters.")
            return redirect('/')
        else:
            self.models['Course'].add_course(name,description)


        return redirect('/')

    def destroy_confirm(self, id):
        courseInfo = self.models['Course'].show_course(id)

        return self.load_view('confirmation.html', courseInfo=courseInfo)


    def destroy(self, id):
        self.models['Course'].destroy_course(id)
        return redirect('/')
