import { ApiProperty } from '@nestjs/swagger'
import { Vehicle } from '@prisma/client'
export class CreateVehicleDto implements Vehicle {
  @ApiProperty()
  id: number
  @ApiProperty()
  vehicle_registration_date: Date
  @ApiProperty()
  vehicle_owner: string
  @ApiProperty()
  vehicle_price: number
  @ApiProperty()
  vehicle_title: string
  @ApiProperty()
  title: string
  @ApiProperty()
  description: string
  @ApiProperty()
  status: string
  @ApiProperty()
  tag_id: number
  @ApiProperty()
  zip_code: string
  @ApiProperty()
  city: string
  @ApiProperty()
  city_url: string
  @ApiProperty()
  country: string
  @ApiProperty()
  country_url: string
  @ApiProperty()
  tenant_id: number
  @ApiProperty()
  motor_cycle_features_id: number
  @ApiProperty()
  vehicle_brand_id: number
  @ApiProperty()
  vehicle_color_id: number
  @ApiProperty()
  vehicle_cubiccms_id: number
  @ApiProperty()
  vehicle_doors_id: number
  @ApiProperty()
  vehicle_features_id: number
  @ApiProperty()
  vehicle_financial_id: number
  @ApiProperty()
  vehicle_fuel_id: number
  @ApiProperty()
  vehicle_gear_box_id: number
  @ApiProperty()
  vehicle_mileage_id: number
  @ApiProperty()
  vehicle_model_id: number
  @ApiProperty()
  vehicle_motor_power_id: number
  @ApiProperty()
  vehicle_steering_id: number
  @ApiProperty()
  vehicle_type_id: number
  @ApiProperty()
  vehicle_version_id: number
  @ApiProperty()
  name: string
  @ApiProperty()
  brand: string
  @ApiProperty()
  model: string
  @ApiProperty()
  year: number
  @ApiProperty()
  color: string
  @ApiProperty()
  version: number
}
