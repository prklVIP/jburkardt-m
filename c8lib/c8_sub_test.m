function c8_sub_test ( )

%*****************************************************************************80
%
%% C8_SUB_TEST tests C8_SUB.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 February 2015
%
%  Author:
%
%    John Burkardt
%
  seed = 123456678;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'C8_SUB_TEST\n' );
  fprintf ( 1, '  C8_SUB computes the difference of two C8''s.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, ...
    '       C1=C8_UNIFORM_01          C2=C8_UNIFORM_01           C3 = C1-C2\n' );
  fprintf ( 1, '     ---------------------     ---------------------     ---------------------\n' );
  fprintf ( 1, '\n' );

  for test = 1 : 10
 
    [ c1, seed ] = c8_uniform_01 ( seed );
    [ c2, seed ] = c8_uniform_01 ( seed );
    c3 = c8_sub ( c1, c2 );

    fprintf ( 1, '  (%12f  %12f)  (%12f  %12f)  (%12f  %12f)\n', ...
      real ( c1 ), imag ( c1 ), real ( c2 ), imag ( c2 ), real ( c3 ), imag ( c3 ) );
 
  end

  return
end
