#!/usr/bin/env python
from comanage import models, db, app

with app.app_context():
    for u in models.User.query.all():
        u.password = 'P@ssw0rd'
    db.session.commit()
