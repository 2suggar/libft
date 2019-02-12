/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_str_tl.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcutjack <lcutjack@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/12 10:42:46 by lcutjack          #+#    #+#             */
/*   Updated: 2019/02/12 17:41:40 by lcutjack         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_str_tup(char *b)
{
	while (*b)
	{
		if (ft_isalpha(*b))
			*b = ft_toupper(*b);
		++b;
	}
}
