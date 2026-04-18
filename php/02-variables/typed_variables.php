<?php
declare(strict_types=1);

// Scalar type hints and return type
function greet(string $name, int $age): string {
    return "Hello, $name! You are $age years old.";
}

// Nullable type: ?int means int or null
function findUser(?int $id): ?string {
    if ($id === null) {
        return null;
    }
    return "User #$id";
}

// Union types (PHP 8+): accepts int or string
function formatId(int|string $id): string {
    return "ID: $id";
}

echo greet("Alice", 30) . "\n";
echo greet("Bob", 25) . "\n";

// Null coalescing operator ?? returns the right side if left is null
echo (findUser(42)   ?? "No user") . "\n";
echo (findUser(null) ?? "No user") . "\n";

echo formatId(7)         . "\n";
echo formatId("abc-123") . "\n";

// Typed properties (PHP 7.4+), readonly (PHP 8.1+),
// and constructor property promotion (PHP 8.0+)
class Product {
    public function __construct(
        public readonly string $name,
        public readonly float  $price,
        public int $stock = 0,
    ) {}
}

$item = new Product(name: "Book", price: 12.99, stock: 5);
echo "{$item->name}: \${$item->price} (stock: {$item->stock})\n";
