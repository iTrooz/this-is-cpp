import <print>;

auto is_teenager(int age) -> bool {
    return age >= 13 and age <= 19;
}

int main() {
    int age = 15;
    std::println("At age {} are you a teenager? {}", age, is_teenager(age) ? "Yes" : "No");
}