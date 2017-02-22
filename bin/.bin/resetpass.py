#!/usr/bin/env python2
from comanage import models, db, app

with app.app_context():
    for u in models.User.query.all():
        u.password = 'P@ssw0rd'
    db.session.commit()
