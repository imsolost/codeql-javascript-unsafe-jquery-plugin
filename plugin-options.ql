import javascript

from DataFlow::FunctionNode source, DataFlow::ParameterNode lastParam
where source = jquery().getAPropertyRead("fn").getAPropertySource()
and lastParam = source.getLastParameter()
select source, lastParam
