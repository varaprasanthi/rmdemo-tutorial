node
{
stage("Git clone")
{
git branch:"master", url: "https://github.com/Tejasrisesetti/cucumberbddframework.git"
}
stage("maven clean&install")
{
bat "mvn clean"
bat "mvn install"
}
stage("Build")
{

}
}