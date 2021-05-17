import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode functionNode |
      functionNode = jquery().getAPropertyRead("fn").getAPropertySource() and
      source = functionNode.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node