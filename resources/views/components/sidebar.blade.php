<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html">Stisla</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
        </div>
        <ul class="sidebar-menu">
            <li class="nav-item">
                <a href="#"
                    class="nav-link has-dropdown"><i class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
            <li class="nav-item">
                <a href="{{ route('users.index') }}"
                    class="nav-link"><i class="fas fa-user"></i> <span>Users</span></a>
            </li>
            <li class="nav-item">
                <a href="{{ route('companies.show', 1) }}"
                    class="nav-link"><i class="fas fa-building"></i> <span>Company</span></a>
            </li>
            <li class="nav-item">
                <a href="{{ route('attendances.index') }}"
                    class="nav-link"><i class="fas fa-clipboard"></i> <span>Attendances</span></a>
            </li>
            <li class="nav-item">
                <a href="{{ route('permissions.index') }}"
                    class="nav-link"><i class="fas fa-pen-to-square"></i> <span>Permission</span></a>
            </li>
    </aside>
</div>
