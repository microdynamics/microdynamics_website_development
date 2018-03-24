#/bin/bash

read -r -p "Are you sure to deploy site/ to gitub [Y/n]" input

case $input in
    [yY][eE][sS]|[yY])
        cd ../microdynamics.github.io/
        pwd
        git rm -r ./
        echo "Remove Done!"
        echo "Start Copy..."
        cp -r ../microdynamics_website_development/site/./ ./
        echo "Copy done!"

        git add ./
        deploy_date=`date +%Y-%m-%d-%X`
        deploy_info="Site updated(mkdocs): $deploy_date" 
        # echo $deploy_date
        echo "The commit info is \"$deploy_info\""
        git commit -m "$deploy_info"
        echo "Start deploy"
        git push
        echo "Deploy Done!"
        ;;

    [nN][oO]|[nN])
        echo "No"
        ;;

    *)
    echo "Invalid input..."
    exit 1
    ;;
esac

