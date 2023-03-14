/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/18 16:47:04 by javiersa          #+#    #+#             */
/*   Updated: 2023/01/18 21:48:07 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

int	ft_strlen(const char *s)
{
	int	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}

void	*ft_calloc(size_t count, size_t size)
{
	void	*calloc;

	calloc = malloc (size * count);
	if (!calloc)
		return (0);
	count = size * count;
	size = 0;
	while (size < count)
	{
		((char *)calloc)[size] = 0;
		size++;
	}
	return (calloc);
}

char	*ft_strchr(const char *s, int c)
{
	unsigned char	character;

	character = (unsigned char)c;
	c = 0;
	while (s[c])
	{
		if (s[c] == character)
			return (&((char *)s)[c]);
		c++;
	}
	if (character == 0)
		return (&((char *)s)[c]);
	return (0);
}

char	*ft_strjoin(char const *s1, char const *s2)
{
	size_t	i;
	size_t	j;
	char	*strjoin;

	j = ft_strlen(s1) + ft_strlen(s2);
	i = 0;
	strjoin = malloc ((j + 1) * sizeof(char));
	if (!strjoin)
		return (0);
	while (s1[i])
	{
		strjoin[i] = s1[i];
		i++;
	}
	j = 0;
	while (s2[j])
	{
		strjoin[i + j] = s2[j];
		j++;
	}
	strjoin[i + j] = 0;
	return (strjoin);
}
