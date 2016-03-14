use inc::Module::Install;
name 'Acme-Kiyoshi';
all_from 'lib/Acme/Kiyoshi.pm';

# requires '';

tests 't/*.t';

test_requires 'Test::More';
auto_include;
WriteAll;
