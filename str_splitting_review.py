authors = "Audre Lorde, William Carlos Williams, Gabriela Mistral, Jean Toomer, An Qi, Walt Whitman, Shel Silverstein, Carmen Boullosa, Kamala Suraiyya, Langston Hughes, Adrienne Rich, Nikki Giovanni"

author_names = authors.split(',')

print(author_names)

author_last_names = []

for name in author_names:
  newnames = name.split(' ')
  author_last_names.append(newnames[-1])
 
print(author_last_names)

