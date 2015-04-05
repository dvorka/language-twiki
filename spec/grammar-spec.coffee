describe "TWiki grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-twiki")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.twiki")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe "source.twiki"
