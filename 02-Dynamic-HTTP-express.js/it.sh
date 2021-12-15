# Ouvre un shell interactif avec le docker
PS3='Which you want to interact with : '

options=("PHP" "Nginx")

select opt in "${options[@]}"
do
    case $opt in
        "PHP")
            docker exec -it 04-02-dynamic-php bash
            ;;
        "Nginx")
            docker exec -it 04-02-dynamic-nginx bash
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
