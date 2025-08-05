---
title: "Libby"
date: 2025-01-27
draft: false
hidden: true
---

# LibbyHDC - Electoral Register Management System

## Overview

LibbyHDC is a Flutter-based desktop application for managing electoral register data. It provides tools for importing, filtering, and analyzing council electoral data with support for duplicate detection and address management.

## Features

### Core Functionality
- **CSV Import**: Import electoral register data from CSV files
- **Database Management**: Create, save, load, and update electoral databases
- **Advanced Filtering**: Search people by name, electoral number, or address with support for AND/OR logic
- **Duplicate Detection**: Automatic identification and management of duplicate entries
- **Address Management**: Track address history and current locations
- **Excel Export**: Export filtered results to Excel format
- **Multi-Database Support**: Switch between main database and duplicate databases

### Search Capabilities
- **Simple Search**: Basic text search across names and electoral numbers
- **Advanced Logic**: 
  - Use `^` for AND logic (must contain all terms)
  - Use `¦` for OR logic (must contain at least one term)
- **Address Filtering**: Filter by postcode and street information

## Installation

### Prerequisites
- Flutter SDK (version 3.8.1 or higher)
- Dart SDK
- Git

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd libby_hdc
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   cd libby_shared
   flutter pub get
   cd ..
   ```

3. **Run the application**
   ```bash
   flutter run -d windows  # For Windows
   flutter run -d macos    # For macOS
   flutter run -d linux    # For Linux
   ```

## User Interface

### Main Window Layout

The application consists of several key areas:

1. **Top Bar**: Database selector dropdown and export button
2. **Search Field**: Text input for filtering people
3. **Main Content**: Split view with people list on the left and address details on the right
4. **Status Bar**: Shows selected person information at the bottom

### Database Selector

Choose between three database views:
- **Main DB**: Primary electoral register data
- **Duplicates 1**: First set of duplicate entries
- **Duplicates 2**: Second set of duplicate entries

## Usage Guide

### Getting Started

1. **Create a New Database**
   - Click the menu button (⋮) in the top-right corner
   - Select "Create DB"
   - Choose a CSV file containing electoral register data
   - The system will process the file and create the database

2. **Load Existing Database**
   - Click the menu button
   - Select "Open DB"
   - The system will load the previously saved database

### Working with Data

#### Searching and Filtering

1. **Basic Search**
   - Type in the search field to filter people by name, electoral number, or address
   - Results update automatically as you type

2. **Advanced Search**
   - Use `^` between terms for AND logic: `smith^john` finds people with both "smith" AND "john"
   - Use `¦` between terms for OR logic: `smith¦john` finds people with either "smith" OR "john"

3. **Address Filtering**
   - Click on a person to see their address details in the right panel
   - The address panel shows all people at that location

#### Database Operations

1. **Save Database**
   - Click menu → "Save DB" to save current data to JSON format

2. **Update Database**
   - Place CSV update files in the `council/updates` folder
   - Click menu → "Update DB" to process updates
   - Updates will add new entries, modify existing ones, or mark deletions

3. **Delete Database**
   - Click menu → "Delete DB" to clear all data

#### Exporting Data

1. **Export to Excel**
   - Filter the data as needed
   - Click the export button (📥) in the top-right corner
   - The file will be saved as `filtered_export.xlsx` in the base directory

### Understanding the Interface

#### People List (Left Panel)
- Shows filtered list of people
- Each entry displays: First Name, Middle Initial, Last Name, Person Key, Electoral Number
- Click on a person to select them and view details

#### Address Details (Right Panel)
- Shows all people at the selected address
- Displays move-in dates and address history
- Click on any person to select them and filter the main list

#### Selected Person Display
- Bottom panel shows currently selected person
- Displays name and electoral number

### Data Structure

The system manages several types of data:

#### Person Records
- **Name**: First name, middle initial, last name
- **Electoral Number**: Unique identifier
- **Address History**: List of all addresses with dates
- **Name History**: Previous names if changed

#### Address Records
- **Postcode**: Postal code
- **Street Details**: Full address information
- **Residents**: List of people currently at this address

#### Duplicate Management
- **Main Database**: Primary electoral register
- **Duplicates 1**: First set of potential duplicates
- **Duplicates 2**: Second set of potential duplicates

## File Structure

### Input Files
- **CSV Files**: Electoral register data in CSV format
- **Update Files**: CSV files placed in `council/updates` folder for incremental updates

### Output Files
- **Database**: `council/councilDB.json` - Main database file
- **Export**: `filtered_export.xlsx` - Excel export of filtered data
- **Errors**: `libby_councilerrors.csv` - Error log from update processing

### Directory Structure
```
libby_hdc/
├── lib/                    # Main application code
├── libby_shared/          # Shared library code
├── council/               # Data directory
│   ├── councilDB.json    # Database file
│   └── updates/          # Update files folder
└── filtered_export.xlsx  # Export file
```

## Error Handling

### Common Issues

1. **File Not Found**
   - Ensure CSV files are in the correct format
   - Check file permissions

2. **Database Loading Errors**
   - Verify the database file exists
   - Check file integrity

3. **Update Processing Errors**
   - Review error log in `libby_councilerrors.csv`
   - Check CSV format matches expected structure

### Error Log
The system generates detailed error logs during update processing:
- **ErrorType**: Type of error encountered
- **PersonExists**: Whether the person already exists in main database
- **Full Record**: Complete CSV row for debugging

## Advanced Features

### Duplicate Detection
The system automatically identifies potential duplicates based on:
- Similar names
- Same electoral numbers
- Address conflicts

### Address History Tracking
- Tracks all address changes with dates
- Shows move-in dates for current addresses
- Maintains historical address information

### Data Validation
- Validates CSV format during import
- Checks for required fields
- Ensures data consistency

## Technical Details

### Supported Platforms
- Windows
- macOS
- Linux

### Dependencies
- Flutter framework
- File picker for file selection
- CSV parser for data import
- Excel export functionality
- JSON for data persistence

### Performance Considerations
- Large datasets may take time to process
- Filtering is optimized for real-time search
- Export operations may take time for large datasets

## Troubleshooting

### Application Won't Start
1. Check Flutter installation: `flutter doctor`
2. Verify dependencies: `flutter pub get`
3. Check platform-specific requirements

### Import Issues
1. Verify CSV format matches expected structure
2. Check file encoding (UTF-8 recommended)
3. Ensure all required columns are present

### Performance Issues
1. Close other applications to free memory
2. Consider splitting large CSV files
3. Use more specific search terms to reduce results

## Support

For technical support or feature requests:
1. Check the error logs for specific issues
2. Review the CSV format requirements
3. Contact the development team with specific error messages

## Version History

- **v1.0**: Initial release with basic electoral register management
- **v1.1**: Added duplicate detection and management
- **v1.2**: Enhanced search capabilities with AND/OR logic
- **v1.3**: Improved error handling and logging
- **v1.4**: Added Excel export functionality

---

*This manual covers the current version of LibbyHDC. For the latest updates and features, refer to the project documentation.*

# Libby

Welcome to the Libby section. This is a private area accessible only via direct links.

## Available Pages

- [Page 1](/libby/page1/) - First private page
- [Page 2](/libby/page2/) - Second private page  
- [Page 3](/libby/page3/) - Third private page
- [Notes](/libby/notes/) - Private notes
- [Resources](/libby/resources/) - Private resources

---

*This section is not listed in the main navigation and is only accessible via direct links.* 