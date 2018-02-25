{application, 'malboro', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['malboro_app','malboro_sup']},
	{registered, [malboro_sup]},
	{applications, [kernel,stdlib]},
	{mod, {malboro_app, []}},
	{env, []}
]}.