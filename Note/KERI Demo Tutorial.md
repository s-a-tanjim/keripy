# KERI Demo Tutorial

- Access to Wallet (EC2) through ssh
    - Give Name, Org name, Wallet for use in dev/prod.
    - It returns a password
- Create AID
    - ``create-local-aid``
- Introduce to the world
    - ``generate-oobi``
    - Give a witness link
- `resolve-oobi` ‘witness link’ > It adds to `contacts` list
    - give name@org
- [Challenge & response protocol]
    - One side: ``generate-challenge``
        - Enter name > It gives some random 12 words
    - Other side: ``respond-to-challenge``
        - Enter 12 words
        - Enter name
        - ‘contact will be ‘authenticated:true’’ on 1st One’s side

```bash
$ ssh -i kli-template.pem ubuntu@ec2-3-86-186-164.compute-1.amazonaws.com
# ec2-3-95-227-238.compute-1.amazonaws.com
$ create-local-aid

# To reset Everything
$ ~/pcw/maintain.sh --reset

$ contacts

$ generate-oobi

$ resolve-oobi http://witness1.main.provenant.net:5631/oobi/ECu_rRzjZ5WD_6Rg_kZbNgLTdZs3f9ae9iuNIyDnBr1Z/witn>

$ generate-challenge

$ respond-to-challenge
```