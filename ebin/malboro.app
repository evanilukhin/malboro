{application, 'malboro', [
	{description, "Simple HTTP/1.1 (in the near future HTTP/2) server transforming JSON messages."},
	{vsn, "0.1.0"},
	{modules, ['common_handler','malboro_app','malboro_sup']},
	{registered, [malboro_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {malboro_app, []}},
	{env, []}
]}.