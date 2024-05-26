# cafeteria/context_processors.py
def user_info(request):
    return {
        'user_id': request.session.get('user_id'),
        'user_name': request.session.get('user_name'),
        'user_type': request.session.get('user_type'),
    }