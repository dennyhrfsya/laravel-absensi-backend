<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Company;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create();

        User::factory()->create([
            'name' => 'Denny',
            'email' => 'dennyherfansya10@gmail.com',
            'password' => Hash::make('12345678'),
        ]);

        //data dummy for company
        Company::create([
            'name' => 'PT. Global Sekuriti Indonesia',
            'email' => 'admin@globalsekuritiindonesia.co.id',
            'address' => 'Gedung Graha Anugerah Lt.6, Jl. Teluk Betung No.42',
            'latitude' => '-6.1963516',
            'longitude' => '106.8213377',
            'radius_km' => '0.5',
            'time_in' => '08:00',
            'time_out' => '17:00',
        ]);
    }
}
