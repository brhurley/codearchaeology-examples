function classify(score: number): string {
    if (score >= 90) {
        return "A";
    } else if (score >= 80) {
        return "B";
    } else if (score >= 70) {
        return "C";
    } else {
        return "F";
    }
}

const scores: number[] = [95, 82, 71, 64];

for (const score of scores) {
    console.log(`Score ${score} => Grade ${classify(score)}`);
}
