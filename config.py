# config.py

class Config(object):
    """
    Common configurations
    """
    TEMPLATES_AUTO_RELOAD = True
    # Put any configurations here that are common across all environments
    DEBUG = True

class DevelopmentConfig(Config):
    """
    Development configurations
    """
    TEMPLATES_AUTO_RELOAD = True
    SQLALCHEMY_ECHO = True

class ProductionConfig(Config):
    """
    Production configurations
    """
    TEMPLATES_AUTO_RELOAD = True
    DEBUG = False

class TestingConfig(Config):
    """
    Testing configurations
    """

    TESTING = True


app_config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig
}