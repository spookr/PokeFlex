drop table pokemon
drop table team
drop table weakness
drop table resistance

select * from pokemon
select * from team

/* Join Statements */
select * from team join pokemon on team.pokemon_id = pokemon.id
select * from team join weakness on weakness.pokemon_id = team.pokemon_id
select * from team join resistance on resistance.pokemon_id = team.pokemon_id

create table pokemon (
  id serial primary key,
  name varchar(100) not null,
  type varchar(100) not null,
  sprite text unique not null,
  image text unique not null,
  evolution text not null
)

create table team (
    pokemon_id integer primary key,
)

create table weakness (
  id serial primary key,
  pokemon_id integer,
  normal integer,
  grass integer,
  fire integer,
  water integer,
  fighting integer,
  flying integer,
  poison integer,
  ground integer,
  rock integer,
  bug integer,
  ghost integer,
  electric integer,
  psychic integer,
  ice integer,
  dragon integer,
  fairy integer
)

create table resistance (
  id serial primary key,
  pokemon_id integer,
  normal integer,
  grass integer,
  fire integer,
  water integer,
  fighting integer,
  flying integer,
  poison integer,
  ground integer,
  rock integer,
  bug integer,
  ghost integer,
  electric integer,
  psychic integer,
  ice integer,
  dragon integer,
  fairy integer
)

insert into pokemon
    (name, type, sprite, image, evolution)
    values
    ('Bulbasaur', 'grass', 'https://i.ibb.co/Bz6xxHS/bulbasaur.png', 'https://i.ibb.co/DQghxQn/Bulbasaur.png', 'notFullyEvolved'),
    ('Bulbasaur', 'grass', 'https://i.ibb.co/Bz6xxHS/bulbasaur.png', 'https://i.ibb.co/DQghxQn/Bulbasaur.png', 'notFullyEvolved'),
    ('Ivysaur', 'grass', 'https://i.ibb.co/RbBF9XZ/ivysaur.png', 'https://i.ibb.co/P9gCsy7/Ivysaur.png', 'notFullyEvolved' ),
    ('Venusaur', 'grass', 'https://i.ibb.co/CzzSWQx/venusaur.png', 'https://i.ibb.co/SNFN3RK/Venusaur.png', 'fullyEvolved'),
    ('Charmander', 'fire', 'https://i.ibb.co/LPqJ0V5/charmander.png', 'https://i.ibb.co/DpsP815/Charmander.png', 'notFullyEvolved'),
    ('Charmeleon', 'fire', 'https://i.ibb.co/cXCJkSc/charmeleon.png', 'https://i.ibb.co/NnYvMRG/Charmeleon.png', 'notFullyEvolved'),
    ('Charizard', 'fire', 'https://i.ibb.co/CtHSnKB/charizard.png', 'https://i.ibb.co/ZW78ZBq/Charizard.png', 'fullyEvolved'),
    ('Squirtle', 'water', 'https://i.ibb.co/rdPGrfC/squirtle.png', 'https://i.ibb.co/YkmbTjB/Squirtle.png', 'notFullyEvolved'),
    ('Wartortle', 'water', 'https://i.ibb.co/xhPv9Hq/wartortle.png', 'https://i.ibb.co/3hXk3XF/Wartortle.png', 'notFullyEvolved'),
    ('Blastoise', 'water', 'https://i.ibb.co/d0c1tyq/blastoise.png', 'https://i.ibb.co/sHDzdDn/Blastoise.png', 'fullyEvolved'),
    ('Caterpie', 'bug', 'https://i.ibb.co/JjBLXGh/caterpie.png', 'https://i.ibb.co/hsZLMBw/Caterpie.png', 'notFullyEvolved'),
    ('Metapod', 'bug', 'https://i.ibb.co/PwLnYcQ/metapod.png', 'https://i.ibb.co/kMDS4hq/Metapod.png', 'notFullyEvolved'),
    ('Butterfree', 'bug', 'https://i.ibb.co/3yKRXv7/butterfree.png', 'https://i.ibb.co/SKyxT0w/Butterfree.png', 'fullyEvolved'),
    ('Weedle', 'bug', 'https://i.ibb.co/4SMnG8b/weedle.png', 'https://i.ibb.co/CnpG9b3/Weedle.png', 'notFullyEvolved'),
    ('Kakuna', 'bug', 'https://i.ibb.co/K2sbvvW/kakuna.png', 'https://i.ibb.co/6Yytjw6/Kakuna.png', 'notFullyEvolved'),
    ('Beedrill', 'bug', 'https://i.ibb.co/KXn6JBg/beedrill.png', 'https://i.ibb.co/sy3f6Qw/Beedrill.png', 'fullyEvolved'),
    ('Pidgey', 'flying', 'https://i.ibb.co/M9Qh4Dv/pidgey.png', 'https://i.ibb.co/wWbVnRf/Pidgey.png', 'notFullyEvolved'),
    ('Pidgeotto', 'flying', 'https://i.ibb.co/b7QyCKy/pidgeotto.png', 'https://i.ibb.co/q71DStJ/Pidgeotto.png', 'notFullyEvolved'),
    ('Pidgeot', 'flying', 'https://i.ibb.co/gFFfhM6/pidgeot.png', 'https://i.ibb.co/xGWhd0J/Pidgeot.png', 'fullyEvolved'),
    ('Rattata', 'normal', 'https://i.ibb.co/HPGyjZr/rattata.png', 'https://i.ibb.co/pKTwWNd/Rattata.png', 'notFullyEvolved'),
    ('Raticate', 'normal', 'https://i.ibb.co/mCkCr1H/raticate.png', 'https://i.ibb.co/tpBkX2D/Raticate.png', 'fullyEvolved'),
    ('Spearow', 'flying', 'https://i.ibb.co/fvqtHpJ/spearow.png', 'https://i.ibb.co/GpW82hf/Spearow.png', 'notFullyEvolved'),
    ('Fearow', 'flying', 'https://i.ibb.co/KWBG93y/fearow.png', 'https://i.ibb.co/cJj1FZb/Fearow.png', 'fullyEvolved'),
    ('Ekans', 'poison', 'https://i.ibb.co/7tS3TpB/ekans.png', 'https://i.ibb.co/qmtm08J/Ekans.png', 'notFullyEvolved'),
    ('Arbok', 'poison', 'https://i.ibb.co/71WKrmV/arbok.png', 'https://i.ibb.co/MRbwRjd/Arbok.png', 'fullyEvolved'),
    ('Pikachu', 'electric', 'https://i.ibb.co/64Z3TRt/pikachu.png', 'https://i.ibb.co/L0hWbxV/Pikachu.png', 'notFullyEvolved'),
    ('Raichu', 'electric', 'https://i.ibb.co/N9406DV/raichu.png', 'https://i.ibb.co/8KK8j5M/Raichu.png', 'fullyEvolved'),
    ('Sandshrew', 'ground', 'https://i.ibb.co/9HLwyz6/sandshrew.png', 'https://i.ibb.co/Ry8Cjhx/Sandshrew.png', 'notFullyEvolved'),
    ('Sandslash', 'ground', 'https://i.ibb.co/0G3C8fv/sandslash.png', 'https://i.ibb.co/DQtfzSr/Sandslash.png', 'fullyEvolved'),
    ('Nidoran ♀', 'poison', 'https://i.ibb.co/7pcxp4q/nidoran-f.png', 'https://i.ibb.co/sQPnZ7Q/Nidoran.png', 'notFullyEvolved'),
    ('Nidornia', 'poison', 'https://i.ibb.co/ZmhYthK/nidorina.png', 'https://i.ibb.co/TrTsncG/Nidorina.png', 'notFullyEvolved'),
    ('Nidoqueen', 'poison', 'https://i.ibb.co/5hKYzTP/nidoqueen.png', 'https://i.ibb.co/Hh7GQ9j/Nidoqueen.png', 'fullyEvolved'),
    ('Nidoran ♂', 'poison', 'https://i.ibb.co/cLxsj0g/nidoran-m.png', 'https://i.ibb.co/9rZ5JVv/Nidoran-m.png', 'notFullyEvolved'),
    ('Nidorino', 'poison', 'https://i.ibb.co/s2kd90N/nidorino.png', 'https://i.ibb.co/CmVPXyz/Nidorino.png', 'notFullyEvolved'),
    ('Nidoking', 'poison', 'https://i.ibb.co/s5nd4wr/nidoking.png', 'https://i.ibb.co/vQQ9XN6/Nidoking.png', 'fullyEvolved'),
    ('Clefairy', 'fairy', 'https://i.ibb.co/VgKsBgS/clefairy.png', 'https://i.ibb.co/6wBGK3V/Clefairy.png', 'notFullyEvolved'),
    ('Clefable', 'fairy', 'https://i.ibb.co/CWTggm8/clefable.png', 'https://i.ibb.co/SnmcjSX/Clefable.png', 'fullyEvolved'),
    ('Vulpix', 'fire', 'https://i.ibb.co/hWjLP7K/vulpix.png', 'https://i.ibb.co/h1FfCTw/Vulpix.png', 'notFullyEvolved'),
    ('Ninetails', 'fire', 'https://i.ibb.co/QnyqQB6/ninetales.png', 'https://i.ibb.co/2hY3QYk/Ninetails.png', 'fullyEvolved'),
    ('Jigglypuff', 'normal', 'https://i.ibb.co/wdyKZ3w/jigglypuff.png', 'https://i.ibb.co/Bzpx4LY/Jigglypuff.png', 'notFullyEvolved'),
    ('Wigglytuff', 'normal', 'https://i.ibb.co/Krh7CnH/wigglytuff.png', 'https://i.ibb.co/nDZGDcM/Wigglytuff.png', 'fullyEvolved'),
    ('Zubat', 'poison', 'https://i.ibb.co/GkYJSp6/zubat.png', 'https://i.ibb.co/9y8NG56/Zubat.png', 'notFullyEvolved'),
    ('Golbat', 'poison', 'https://i.ibb.co/nbbQVJY/golbat.png', 'https://i.ibb.co/zNf8fxh/Golbat.png', 'fullyEvolved'),
    ('Oddish', 'grass', 'https://i.ibb.co/hKd7nM6/oddish.png', 'https://i.ibb.co/hBzS3LG/Oddish.png', 'notFullyEvolved'),
    ('Gloom', 'grass', 'https://i.ibb.co/80YvJMv/gloom.png', 'https://i.ibb.co/GTKCN5T/Gloom.png', 'notFullyEvolved'),
    ('Vileplume', 'grass', 'https://i.ibb.co/jMbGmnJ/vileplume.png', 'https://i.ibb.co/qYNYPn2/Vileplume.png', 'fullyEvolved'),
    ('Paras', 'grass', 'https://i.ibb.co/YRCTzhV/paras.png', 'https://i.ibb.co/cwQ0JK3/Paras.png', 'notFullyEvolved'),
    ('Parasect', 'grass', 'https://i.ibb.co/GQpTgkP/parasect.png', 'https://i.ibb.co/pLX1Z1q/Parasect.png', 'fullyEvolved'),
    ('Venonat', 'bug', 'https://i.ibb.co/pQs5DXD/venonat.png', 'https://i.ibb.co/fqBkrng/Venonat.png', 'notFullyEvolved'),
    ('Venomoth', 'bug', 'https://i.ibb.co/LPS5YGT/venomoth.png', 'https://i.ibb.co/S53SsMQ/Venomoth.png', 'fullyEvolved'),
    ('Diglett', 'ground', 'https://i.ibb.co/RHCnLqc/diglett.png', 'https://i.ibb.co/MkGZLJX/Diglett.png', 'notFullyEvolved'),
    ('Dugtrio', 'ground', 'https://i.ibb.co/F06mYrM/dugtrio.png', 'https://i.ibb.co/FxJNnYL/Dugtrio.png', 'fullyEvolved'),
    ('Meowth', 'normal', 'https://i.ibb.co/vH695zN/meowth.png', 'https://i.ibb.co/8cb15s8/Meowth.png', 'notFullyEvolved'),
    ('Persian', 'normal', 'https://i.ibb.co/3v7Vztv/persian.png', 'https://i.ibb.co/WFPfbpm/Persian.png', 'fullyEvolved'),
    ('Psyduck', 'water', 'https://i.ibb.co/37XH2gf/psyduck.png', 'https://i.ibb.co/p3ZMTVK/Psyduck.png', 'notFullyEvolved'),
    ('Golduck', 'water', 'https://i.ibb.co/mbTqnhy/golduck.png', 'https://i.ibb.co/hXDBTQs/Golduck.png', 'fullyEvolved'),
    ('Mankey', 'fighting', 'https://i.ibb.co/f0NkmtC/mankey.png', 'https://i.ibb.co/LkwGT98/Mankey.png', 'notFullyEvolved'),
    ('Primeape', 'fighting', 'https://i.ibb.co/M9CkVty/primeape.png', 'https://i.ibb.co/vPdQLQW/Primeape.png', 'fullyEvolved'),
    ('Growlithe', 'fire', 'https://i.ibb.co/1s5Nr9T/growlithe.png', 'https://i.ibb.co/bP5bcC3/Growlithe.png', 'notFullyEvolved'),
    ('Arcanine', 'fire', 'https://i.ibb.co/TLP5kJm/arcanine.png', 'https://i.ibb.co/pKQCnKM/Arcanine.png', 'fullyEvolved'),
    ('Poliwag', 'water', 'https://i.ibb.co/T0rpRh6/poliwag.png', 'https://i.ibb.co/dWR3RP5/Poliwag.png', 'notFullyEvolved'),
    ('Poliwhirl', 'water', 'https://i.ibb.co/3SvyQCT/poliwhirl.png', 'https://i.ibb.co/XWB77F9/Poliwhirl.png', 'notFullyEvolved'),
    ('Poliwrath', 'water', 'https://i.ibb.co/LNDMp8F/poliwrath.png', 'https://i.ibb.co/3hqvN4P/Poliwrath.png', 'fullyEvolved'),
    ('Abra', 'psychic', 'https://i.ibb.co/zngd8Yz/abra.png', 'https://i.ibb.co/KqD409P/Abra.png', 'notFullyEvolved'),
    ('Kadabra', 'psychic', 'https://i.ibb.co/R4Nmw4W/kadabra.png', 'https://i.ibb.co/0ZSP9tb/Kadabra.png', 'notFullyEvolved'),
    ('Alakazam', 'psychic', 'https://i.ibb.co/F01sFn3/alakazam.png', 'https://i.ibb.co/C7Ts398/Alakazam.png', 'fullyEvolved'),
    ('Machop', 'fighting', 'https://i.ibb.co/ZmspkwM/machop.png', 'https://i.ibb.co/NCJC7k1/Machop.png', 'notFullyEvolved'),
    ('Machoke', 'fighting', 'https://i.ibb.co/QnYRwwp/machoke.png', 'https://i.ibb.co/w4FBjzK/Machoke.png', 'notFullyEvolved'),
    ('Machamp', 'fighting', 'https://i.ibb.co/XkKM3rg/machamp.png', 'https://i.ibb.co/mtcmVYZ/Machamp.png', 'fullyEvolved'),
    ('Bellsprout', 'grass', 'https://i.ibb.co/BwMtF50/bellsprout.png', 'https://i.ibb.co/TRcbg3J/Bellsprout.png', 'notFullyEvolved'),
    ('Weepinbell', 'grass', 'https://i.ibb.co/TmvR8f6/weepinbell.png', 'https://i.ibb.co/34yGH3T/Weepinbell.png', 'notFullyEvolved'),
    ('Victreebel', 'grass', 'https://i.ibb.co/Qf4C3jX/victreebel.png', 'https://i.ibb.co/qR2RMKX/Victreebel.png', 'fullyEvolved'),
    ('Tentacool', 'water', 'https://i.ibb.co/27wCGCk/tentacool.png', 'https://i.ibb.co/Qf7R044/Tentacool.png', 'notFullyEvolved'),
    ('Tentacruel', 'water', 'https://i.ibb.co/YyZnpHt/tentacruel.png', 'https://i.ibb.co/Mp2PGD2/Tentacruel.png', 'fullyEvolved'),
    ('Geodude', 'rock', 'https://i.ibb.co/P6c1tqk/geodude.png', 'https://i.ibb.co/kxVR1SL/Geodude.png', 'notFullyEvolved'),
    ('Graveler', 'rock', 'https://i.ibb.co/L1w3k8S/graveler.png', 'https://i.ibb.co/MGCyK2g/Graveler.png', 'notFullyEvolved'),
    ('Golem', 'rock', 'https://i.ibb.co/VSPK6jF/golem.png', 'https://i.ibb.co/yYcp3gT/Golem.png', 'fullyEvolved'),
    ('Ponyta', 'fire', 'https://i.ibb.co/MhytnmW/ponyta.png', 'https://i.ibb.co/mtSr0Vn/Ponyta.png', 'notFullyEvolved'),
    ('Rapidash', 'fire', 'https://i.ibb.co/pWhTd7R/rapidash.png', 'https://i.ibb.co/j64rrgR/Rapidash.png', 'fullyEvolved'),
    ('Slowpoke', 'water', 'https://i.ibb.co/f426PdJ/slowpoke.png', 'https://i.ibb.co/n8NQc69/Slowpoke.png', 'notFullyEvolved'),
    ('Slowbro', 'water', 'https://i.ibb.co/986Jkff/slowbro.png', 'https://i.ibb.co/MCCzqQz/Slowbro.png', 'fullyEvolved'),
    ('Magnemite', 'electric', 'https://i.ibb.co/sFGLQ3x/magnemite.png', 'https://i.ibb.co/gW4KTfz/Magnemite.png', 'notFullyEvolved'),
    ('Magneton', 'electric', 'https://i.ibb.co/K5VNBH3/magneton.png', 'https://i.ibb.co/VQSMfxP/Magneton.png', 'fullyEvolved'),
    ('Farfetch`D', 'flying', 'https://i.ibb.co/JC08rSd/farfetchd.png', 'https://i.ibb.co/CnTRhDt/Farfetch-039-d.png', 'fullyEvolved'),
    ('Dodou', 'flying', 'https://i.ibb.co/9Gmdvqr/doduo.png', 'https://i.ibb.co/wLTVSKs/Doduo.png', 'notFullyEvolved'),
    ('Dodrio', 'flying', 'https://i.ibb.co/RyvFBNr/dodrio.png', 'https://i.ibb.co/KGVPsd6/Dodrio.png', 'fullyEvolved'),
    ('Seel', 'water', 'https://i.ibb.co/Vj2wqpy/seel.png', 'https://i.ibb.co/60NYj72/Seel.png', 'notFullyEvolved'),
    ('Dewgong', 'water', 'https://i.ibb.co/M2wM5P7/dewgong.png', 'https://i.ibb.co/bvyDkrH/Dewgong.png', 'fullyEvolved'),
    ('Grimer', 'poison', 'https://i.ibb.co/gr7C95r/grimer.png', 'https://i.ibb.co/C9dfrbf/Grimer.png', 'notFullyEvolved'),
    ('Muk', 'poison', 'https://i.ibb.co/WcX2rkn/muk.png', 'https://i.ibb.co/NCv4CTh/Muk.png', 'fullyEvolved'),
    ('Shellder', 'water', 'https://i.ibb.co/s6j64wn/shellder.png', 'https://i.ibb.co/9Z8YQM4/Shellder.png', 'notFullyEvolved'),
    ('Cloyster', 'water', 'https://i.ibb.co/Ss7GxSb/cloyster.png', 'https://i.ibb.co/P5q3ckq/Cloyster.png', 'fullyEvolved'),
    ('Gastly', 'ghost', 'https://i.ibb.co/ZdtvPRw/gastly.png', 'https://i.ibb.co/ssstn8V/Gastly.png', 'notFullyEvolved'),
    ('Haunter', 'ghost', 'https://i.ibb.co/Scm5yV7/haunter.png', 'https://i.ibb.co/jGG1hPg/Haunter.png', 'notFullyEvolved'),
    ('Gengar', 'ghost', 'https://i.ibb.co/G94LKNp/gengar.png', 'https://i.ibb.co/wp1njj2/Gengar.png', 'fullyEvolved'),
    ('Onix', 'rock', 'https://i.ibb.co/2794g0r/onix.png', 'https://i.ibb.co/m5CZd2h/Onix.png', 'fullyEvolved'),
    ('Drowzee', 'psychic', 'https://i.ibb.co/0MHc2BZ/drowzee.png', 'https://i.ibb.co/8xD0jR3/Drowzee.png', 'notFullyEvolved'),
    ('Hypno', 'psychic', 'https://i.ibb.co/sRyykWq/hypno.png', 'https://i.ibb.co/SQKVC78/Hypno.png', 'fullyEvolved'),
    ('Krabby', 'water', 'https://i.ibb.co/tZkp8wr/krabby.png', 'https://i.ibb.co/tpzrVzk/Krabby.png', 'notFullyEvolved'),
    ('Kingler', 'water', 'https://i.ibb.co/qsXztPZ/kingler.png', 'https://i.ibb.co/Jn412wr/Kingler.png', 'fullyEvolved'),
    ('Voltorb', 'electric', 'https://i.ibb.co/wWjRXRM/voltorb.png', 'https://i.ibb.co/jkT2LhC/Voltorb.png', 'notFullyEvolved'),
    ('Electrode', 'electric', 'https://i.ibb.co/d5kSHvn/electrode.png', 'https://i.ibb.co/PwLwQgP/Electrode.png', 'fullyEvolved'),
    ('Exeggcute', 'grass', 'https://i.ibb.co/jGwppmm/exeggcute.png', 'https://i.ibb.co/BP147Lx/Exeggcute.png', 'notFullyEvolved'),
    ('Exeggutor', 'grass', 'https://i.ibb.co/CmW8qyQ/exeggutor.png', 'https://i.ibb.co/KhKCkWK/Exeggutor.png', 'fullyEvolved'),
    ('Cubone', 'ground', 'https://i.ibb.co/9wNYBZ5/cubone.png', 'https://i.ibb.co/w6F080B/Cubone.png', 'notFullyEvolved'),
    ('Marowak', 'ground', 'https://i.ibb.co/txyhcQ4/marowak.png', 'https://i.ibb.co/3smpKvm/Marowak.png', 'fullyEvolved'),
    ('Hitmonlee', 'fighting', 'https://i.ibb.co/3WM31hM/hitmonlee.png', 'https://i.ibb.co/6H235YZ/Hitmonlee.png', 'fullyEvolved'),
    ('Hitmonchan', 'fighting', 'https://i.ibb.co/0ZhhKxV/hitmonchan.png', 'https://i.ibb.co/DLksJGt/Hitmonchan.png', 'fullyEvolved'),
    ('Lickitung', 'normal', 'https://i.ibb.co/wLcXsD0/lickitung.png', 'https://i.ibb.co/xY5bX29/Lickitung.png', 'fullyEvolved'),
    ('Koffing', 'poison', 'https://i.ibb.co/PZ4JxFr/koffing.png', 'https://i.ibb.co/K9ZcmWZ/Koffing.png', 'notFullyEvolved'),
    ('Weezing', 'poison', 'https://i.ibb.co/H27k3W3/weezing.png', 'https://i.ibb.co/x1yTXR1/Weezing.png', 'fullyEvolved'),
    ('Rhyhorn', 'ground', 'https://i.ibb.co/yRngPgF/rhyhorn.png', 'https://i.ibb.co/Jq6QP56/Rhyhorn.png', 'notFullyEvolved'),
    ('Rhydon', 'ground', 'https://i.ibb.co/0JYhMKB/rhydon.png', 'https://i.ibb.co/0GnYfL2/Rhydon.png', 'fullyEvolved'),
    ('Chansey', 'normal', 'https://i.ibb.co/LdpMjMS/chansey.png', 'https://i.ibb.co/C9wHv32/Chansey.png', 'fullyEvolved'),
    ('Tangela', 'grass', 'https://i.ibb.co/sqc3NvP/tangela.png', 'https://i.ibb.co/fXb5F77/Tangela.png', 'fullyEvolved'),
    ('Kangaskhan', 'normal', 'https://i.ibb.co/BcF6b0y/kangaskhan.png', 'https://i.ibb.co/3cLt4gm/Kangaskhan.png', 'fullyEvolved'),
    ('Horsea', 'water', 'https://i.ibb.co/cxC5BfP/horsea.png', 'https://i.ibb.co/3cqBHZK/Horsea.png', 'notFullyEvolved'),
    ('Seadra', 'water', 'https://i.ibb.co/1JD2YNh/seadra.png', 'https://i.ibb.co/tH3VxFj/Seadra.png', 'fullyEvolved'),
    ('Goldeen', 'water', 'https://i.ibb.co/cX1tLK8/goldeen.png', 'https://i.ibb.co/vvNMXQf/Goldeen.png', 'notFullyEvolved'),
    ('Seaking', 'water', 'https://i.ibb.co/VTr0hNF/seaking.png', 'https://i.ibb.co/2FjLWdC/Seaking.png', 'fullyEvolved'),
    ('Staryu', 'water', 'https://i.ibb.co/hHG8RQX/staryu.png', 'https://i.ibb.co/jV0LTKH/Staryu.png', 'notFullyEvolved'),
    ('Starmie', 'water', 'https://i.ibb.co/482B6Gw/starmie.png', 'https://i.ibb.co/Rh0tZ3L/Starmie.png', 'fullyEvolved'),
    ('Mr.Mime', 'psychic', 'https://i.ibb.co/KhhsRnt/mr-mime.png', 'https://i.ibb.co/qjX3XRh/Mr-Mime.png', 'fullyEvolved'),
    ('Scyther', 'bug', 'https://i.ibb.co/Ns8LVzF/scyther.png', 'https://i.ibb.co/X7B7BC2/Scyther.png', 'fullyEvolved'),
    ('Jynx', 'ice', 'https://i.ibb.co/vLPJHyJ/jynx.png', 'https://i.ibb.co/2yYVZRb/Jynx.png', 'fullyEvolved'),
    ('Electabuzz', 'electric', 'https://i.ibb.co/9hpwZzT/electabuzz.png', 'https://i.ibb.co/0ygZ6jZ/Electabuzz.png', 'fullyEvolved'),
    ('Magmar', 'fire', 'https://i.ibb.co/0CNwXgH/magmar.png', 'https://i.ibb.co/JzVf6mF/Magmar.png', 'fullyEvolved'),
    ('Pinsir', 'bug', 'https://i.ibb.co/znVnf1s/pinsir.png', 'https://i.ibb.co/LJNYBcJ/Pinsir.png', 'fullyEvolved'),
    ('Tauros', 'normal', 'https://i.ibb.co/MDPcdft/tauros.png', 'https://i.ibb.co/wMLc2t3/Tauros.png', 'fullyEvolved'),
    ('Magikarp', 'water', 'https://i.ibb.co/NKsQDJM/magikarp.png', 'https://i.ibb.co/8jdy1sH/Magikarp.png', 'notFullyEvolved'),
    ('Gyarados', 'water', 'https://i.ibb.co/4P2G7vt/gyarados.png', 'https://i.ibb.co/tPpQ137/Gyarados.png', 'fullyEvolved'),
    ('Lapras', 'water', 'https://i.ibb.co/8dhwXRD/lapras.png', 'https://i.ibb.co/1GKByPc/Lapras.png', 'fullyEvolved'),
    ('Ditto', 'normal', 'https://i.ibb.co/WBSCg45/ditto.png', 'https://i.ibb.co/6sCfnmH/Ditto.png', 'fullyEvolved'),
    ('Eevee', 'normal', 'https://i.ibb.co/Bf7NVdJ/eevee.png', 'https://i.ibb.co/Fhtxjf8/Eevee.png', 'notFullyEvolved'),
    ('Vaporeon', 'water', 'https://i.ibb.co/JyfrGgN/vaporeon.png', 'https://i.ibb.co/5R0DQdS/Vaporeon.png', 'fullyEvolved'),
    ('Jolteon', 'electric', 'https://i.ibb.co/8zRSVBj/jolteon.png', 'https://i.ibb.co/7r9DKfX/Jolteon.png', 'fullyEvolved'),
    ('Flareon', 'fire', 'https://i.ibb.co/0njrgHT/flareon.png', 'https://i.ibb.co/n1Mphwn/Flareon.png', 'fullyEvolved'),
    ('Porygon', 'normal', 'https://i.ibb.co/g6Lrgj5/porygon.png', 'https://i.ibb.co/zXZprSw/Porygon.png', 'fullyEvolved'),
    ('Omanyte', 'rock', 'https://i.ibb.co/h7xkCFQ/omanyte.png', 'https://i.ibb.co/H4R13kc/Omanyte.png', 'notFullyEvolved'),
    ('Omastar', 'rock', 'https://i.ibb.co/5MLvSqS/omastar.png', 'https://i.ibb.co/QQ0ddHk/Omastar.png', 'fullyEvolved'),
    ('Kabuto', 'rock', 'https://i.ibb.co/VYSBLXK/kabuto.png', 'https://i.ibb.co/9G1SC4p/Kabuto.png', 'notFullyEvolved'),
    ('Kabutops', 'rock', 'https://i.ibb.co/2kWHcmR/kabutops.png', 'https://i.ibb.co/3pRf98H/Kabutops.png', 'fullyEvolved'),
    ('Aerodactyl', 'rock', 'https://i.ibb.co/dKBtPC7/aerodactyl.png', 'https://i.ibb.co/vJX181k/Aerodactyl.png', 'fullyEvolved'),
    ('Snorlax', 'normal', 'https://i.ibb.co/1dyVpNT/snorlax.png', 'https://i.ibb.co/pfrFRv1/Snorlax.png', 'fullyEvolved'),
    ('Articuno', 'ice', 'https://i.ibb.co/WGvvdJN/articuno.png', 'https://i.ibb.co/t2ysty1/Articuno.png', 'fullyEvolved'),
    ('Zapdos', 'electric', 'https://i.ibb.co/Gk214X1/zapdos.png', 'https://i.ibb.co/LQCsJHm/Zapdos.png', 'fullyEvolved'),
    ('Moltres', 'fire', 'https://i.ibb.co/sK024kT/moltres.png', 'https://i.ibb.co/gJHnM60/Moltres.png', 'fullyEvolved'),
    ('Dratini', 'dragon', 'https://i.ibb.co/gTgNHVj/dratini.png', 'https://i.ibb.co/p2W3bY2/Dratini.png', 'notFullyEvolved'),
    ('Dragonair', 'dragon', 'https://i.ibb.co/pndR0hk/dragonair.png', 'https://i.ibb.co/yynXF4J/Dragonair.png', 'notFullyEvolved'),
    ('Dragonite', 'dragon', 'https://i.ibb.co/P4yywCy/dragonite.png', 'https://i.ibb.co/F3sW8N9/Dragonite.png', 'fullyEvolved'),
    ('Mewtwo', 'psychic', 'https://i.ibb.co/PF6Zm8g/mewtwo.png', 'https://i.ibb.co/7CdcVjT/Mewtwo.png', 'fullyEvolved'),
    ('Mew', 'psychic', 'https://i.ibb.co/DzHzCvH/mew.png', 'https://i.ibb.co/HYPFxK7/Mew.png', 'fullyEvolved')

    insert into weakness
    (pokemon_id, normal, grass, fire, water, fighting, flying, poison, ground, rock, bug, ghost, electric, psychic, ice, dragon, fairy)
    values
    (1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (3, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (4, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (5, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (6, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (9, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (10, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (11, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (12, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (13, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
    (14, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
    (15, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
    (16, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (17, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (18, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (20, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (21, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (22, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (23, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (24, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (25, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (26, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (27, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (28, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (29, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (31, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (32, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (33, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (34, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (35, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (36, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (37, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (38, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (39, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (40, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (41, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0),
    (42, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0),
    (43, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (44, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (45, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (46, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0),
    (47, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0),
    (48, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
    (49, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
    (50, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (51, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (52, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (53, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (54, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (55, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (56, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (57, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (58, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (59, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (60, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (61, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (62, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1),
    (63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (66, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (67, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (68, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (69, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (70, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (71, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (72, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
    (73, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
    (74, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (75, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (76, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (77, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (78, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (79, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
    (80, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
    (81, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (82, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (83, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (84, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (85, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (86, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (87, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (88, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (89, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
    (90, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (91, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (92, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0),
    (93, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0),
    (94, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0),
    (95, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (98, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (99, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (101, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (102, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0),
    (103, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0),
    (104, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (105, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (106, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (107, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
    (108, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (111, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (112, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
    (113, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (114, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (115, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (116, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (117, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (118, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (119, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (120, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (121, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
    (122, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0),
    (123, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (124, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
    (125, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (126, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (127, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (128, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (129, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (130, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (131, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (132, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (133, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (135, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (136, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
    (137, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (138, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (139, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (140, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (141, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (142, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0),
    (143, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (144, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (145, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0),
    (146, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
    (147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1),
    (148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1),
    (149, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1),
    (150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
    (151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)


    insert into resistance
    (pokemon_id, normal, grass, fire, water, fighting, flying, poison, ground, rock, bug, ghost, electric, psychic, ice, dragon, fairy)
    values
    (1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (3, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (4, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (6, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (7, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (8, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (9, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (10, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (11, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (12, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (13, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (14, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (15, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (21, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (23, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (24, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (27, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (28, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (29, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (30, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (31, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1),
    (32, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (33, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (34, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1),
    (35, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (36, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (37, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (38, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (41, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (42, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (44, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (45, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (46, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (47, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0),
    (48, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (49, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (50, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (51, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (54, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (55, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (56, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (57, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (58, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (59, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (60, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (61, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (62, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0),
    (63, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (66, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (67, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (68, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (69, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (70, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (71, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (72, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (73, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (74, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (75, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (76, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (77, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (78, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (79, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (80, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (81, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1),
    (82, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1),
    (83, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (84, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (85, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (86, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (87, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (88, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (89, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (90, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (91, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (92, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (93, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (94, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (95, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (96, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (97, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (98, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (99, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (101, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (102, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
    (103, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0),
    (104, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (105, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (106, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (107, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
    (108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (109, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (110, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (111, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (112, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
    (113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (114, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
    (115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (116, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (117, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (118, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (119, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (120, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (121, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (122, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (123, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
    (125, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (126, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (127, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    (128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (129, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (130, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (131, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (134, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (135, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (136, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1),
    (137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (138, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (139, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (140, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (141, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0),
    (142, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    (144, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (145, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (146, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1),
    (147, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (148, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
    (149, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
    (150, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
    (151, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
