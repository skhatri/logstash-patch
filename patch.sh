
before_patch=$(jar tvf log4j-core-2.9.1.jar|wc -l)
echo "before patch: ${before_patch}"

if [[ -d tmp ]]; then
  rm -rf tmp
fi;
mkdir tmp && cp log4j-core-2.9.1.jar ./tmp \
  && cd tmp \
  && jar xf log4j-core-2.9.1.jar \
  && rm log4j-core-2.9.1.jar \
  && rm ./org/apache/logging/log4j/core/lookup/JndiLookup.class \
  && jar cf ../patched.jar . \
  && cd ../


after_patch=$(jar tvf patched.jar|wc -l)
echo "after patch: ${after_patch}"



