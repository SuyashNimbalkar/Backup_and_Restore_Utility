from setuptools import setup, find_packages

setup(
    name="BackupRestoreDb",  # Name of your library
    version="1.0.0",  # Version of your library
    description="A utility for backing up and restoring databases.",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    author="Suyash Nimbalkar",
    author_email="jaynimbalkar38@gmail.com",
    url="https://github.com/SuyashNimbalkar/Backup_and_Restore_Utility",  # Replace with your repo URL
    license="Apache-2.0",  # Replace with your license
    packages=find_packages(),  # Automatically find all packages
    install_requires=[
        # Add any dependencies your library needs here
    ],
    classifiers=[
        "Programming Language :: Python :: 3.11.9",
        "License :: OSI Approved :: Apache-2.0 License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.11.8",  # Specify the minimum Python version
)