import javascript

from DataFlow::Node source
where source = jquery().getAPropertyRead("fn").getAPropertySource()
select source