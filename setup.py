from setuptools import setup

setup(name='abctest',
      version="0.0.1",
      description='ABC Test',
      install_requires=["george>=0.3.1"],
      include_package_data=True,
      zip_safe=False,
      packages=["abctest"]
      )