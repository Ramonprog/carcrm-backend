import { Vehicle } from '@prisma/client'
export class CreateVehicleDto implements Vehicle {
  id: number
  vehicle_registration_date: Date
  vehicle_owner: string
  vehicle_price: number
  vehicle_title: string
  title: string
  description: string
  status: string
  tag_id: number
  zip_code: string
  city: string
  city_url: string
  country: string
  country_url: string
  tenant_id: number
  motor_cycle_features_id: number
  vehicle_brand_id: number
  vehicle_color_id: number
  vehicle_cubiccms_id: number
  vehicle_doors_id: number
  vehicle_features_id: number
  vehicle_financial_id: number
  vehicle_fuel_id: number
  vehicle_gear_box_id: number
  vehicle_mileage_id: number
  vehicle_model_id: number
  vehicle_motor_power_id: number
  vehicle_steering_id: number
  vehicle_type_id: number
  vehicle_version_id: number
  name: string
  brand: string
  model: string
  year: number
  color: string
  version: number
}
