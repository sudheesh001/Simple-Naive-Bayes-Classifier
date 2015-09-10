#encoding: utf-8
require './naive_bayes'
require 'pp'

b = NaiveBayes.new(["category 1", "category 2"]) # Categories to supply here even more supported

# Train for each category

b.train("category 1", "TEXT HERE1")
b.train("category 1", "TEXT HERE2")
b.train("category 1", "TEXT HERE3")
b.train("category 1", "TEXT HERE4")
b.train("category 1", "TEXT HERE5")
b.train("category 1", "TEXT HERE6")
b.train("category 1", "TEXT HERE7")
b.train("category 1", "TEXT HERE8")

b.train("category 2", "TEXT HERE1")
b.train("category 2", "TEXT HERE2")
b.train("category 2", "TEXT HERE3")
b.train("category 2", "TEXT HERE4")
b.train("category 2", "TEXT HERE5")
b.train("category 2", "TEXT HERE6")
b.train("category 2", "TEXT HERE7")
b.train("category 2", "TEXT HERE8")

text = " The woman had six other children before the set of eight, which were only the second set of octuplets recorded in the U.S. The babies' grandfather said Friday that his daughter wanted one more child and didn't expect this to happen. Kaiser Permanente's Bellflower Medical Center reports that all is well with the mother and children. Seven babies are breathing unassisted, and one is receiving assisted oxygen through a tube in the nose. Seven are being tube-fed donated breast milk."

# Post training information
pp b.probabilities(text)
puts "Given text : " + text " > Classified as : " + b.classify(text)
puts