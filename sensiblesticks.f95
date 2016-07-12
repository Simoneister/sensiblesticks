program sensiblesticks
implicit none
real,dimension(2000,2) :: l, r, z, final
character(len=20) :: x
integer state, a, b, c, i, j, total
logical going

open(unit=1,file="sticks.txt")
open(unit=2,file="sticksoutput.txt")

a=1
b=1
c=1

read(1,'(a)') x
read(1,'(a)') x

	do while (x /= 'R Sticks')
		read(x,*) l(a,1), l(a,2)
		a = a+1
		read(1,'(a)') x
	end do

read(1,'(a)') x

	do while (x /= 'Z Sticks')
		read(x,*) r(b,1), r(b,2)
		b = b+1
		read(1,'(a)') x
	end do

read(1,'(a)') x

	do
		read(x,*) z(c,1), z(c,2)
		c = c+1
		read(1,'(a)', iostat=state) x
		if (state /= 0) exit
	end do

final(1,1) = l(1,1)
total = 1

	do i=1,a-1
		j = 1
		going = .true.
		
		do while (going)
			if (l(i,1)==final(j,1)) then
				final(j,2) = final(j,2) + l(i,2)
				going = .false.
			end if
			
			if (going) then
				j = j+1
			end if
				
			if (j==total+1) then
				final(j,1) = l(i,1)
				final(j,2) = l(i,2)
				going = .false.
				total = j
			end if
		end do
		
	end do
	
	
	do i=1,b-1
		j = 1
		going = .true.
		
		do while (going)
			if (r(i,1)==final(j,1)) then
				final(j,2) = final(j,2) + r(i,2)
				going = .false.
			end if
			
			if (going) then
				j = j+1
			end if
				
			if (j==total+1) then
				final(j,1) = r(i,1)
				final(j,2) = r(i,2)
				going = .false.
				total = j
			end if
		end do
		
	end do
	
	do i=1,c-1
		j = 1
		going = .true.
		
		do while (going)
			if (z(i,1)==final(j,1)) then
				final(j,2) = final(j,2) + z(i,2)
				going = .false.
			end if
			
			if (going) then
				j = j+1
			end if
				
			if (j==total+1) then
				final(j,1) = z(i,1)
				final(j,2) = z(i,2)
				going = .false.
				total = j
			end if
		end do
		
	end do
	
	write(2,*) "energy intensity"
	
	do i=1,total
		if	(final(i,2)/=0) then
			write(2,'(f7.2,a,f7.5)') final(i,1),' ', final(i,2)
		end if
	end do

end program sensiblesticks