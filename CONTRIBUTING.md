# Contributing to DataScout Enterprise Platform

Thank you for your interest in contributing to DataScout! This document provides guidelines and instructions for contributing.

---

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Process](#development-process)
- [Coding Standards](#coding-standards)
- [Submitting Changes](#submitting-changes)
- [Reporting Bugs](#reporting-bugs)

---

## Code of Conduct

### Our Pledge
We are committed to providing a welcoming and inspiring community for all.

### Our Standards
- Be respectful and inclusive
- Accept constructive criticism gracefully
- Focus on what is best for the community
- Show empathy towards others

---

## Getting Started

### Prerequisites
- Python 3.11+
- Node.js 18+
- Git
- OpenAI API Key (for testing)

### Development Setup

```bash
# Fork and clone the repository
git clone https://github.com/yourusername/datascout.git
cd datascout

# Backend setup
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\\Scripts\\activate
pip install -r requirements.txt
cp .env.example .env  # Add your test API keys

# Frontend setup
cd ../frontend
npm install
cp .env.example .env.local

# Run tests
cd ../backend
python -m pytest tests/ -v
```

---

## Development Process

### Branching Strategy

- `main` - Production-ready code
- `develop` - Development branch
- `feature/feature-name` - New features
- `fix/bug-name` - Bug fixes
- `docs/topic` - Documentation updates

### Workflow

1. **Create a branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make changes**
   - Write clean, documented code
   - Add tests for new features
   - Update documentation

3. **Test your changes**
   ```bash
   # Backend tests
   cd backend
   python -m pytest tests/ -v
   
   # Frontend (if applicable)
   cd frontend
   npm run lint
   npm run build
   ```

4. **Commit**
   ```bash
   git add .
   git commit -m "feat: add new feature"
   ```

5. **Push and create PR**
   ```bash
   git push origin feature/your-feature-name
   ```

---

## Coding Standards

### Python (Backend)

**Style Guide:** PEP 8

```python
# Good
def process_query(query: str) -> Dict[str, Any]:
    """Process a user query and return results.
    
    Args:
        query: The user's natural language query
        
    Returns:
        Dict containing response and metadata
    """
    result = {"answer": "", "data": []}
    return result

# Use type hints
# Document all functions
# Keep functions small and focused
```

**Testing:**
```python
# Write tests for all new features
def test_process_query():
    result = process_query("test query")
    assert "answer" in result
    assert isinstance(result["data"], list)
```

### TypeScript/React (Frontend)

**Style Guide:** Airbnb JavaScript/React

```typescript
// Good
interface Props {
  message: string;
  onSend: (msg: string) => void;
}

export const ChatInput: React.FC<Props> = ({ message, onSend }) => {
  // Component implementation
};

// Use TypeScript interfaces
// Functional components with hooks
// Props destructuring
```

### Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add user authentication
fix: resolve chart rendering bug
docs: update API documentation
test: add tests for SQL agent
refactor: simplify query routing logic
```

---

## Submitting Changes

### Pull Request Process

1. **Update documentation**
   - Update README if needed
   - Add/update inline comments
   - Update CHANGELOG.md

2. **Ensure tests pass**
   ```bash
   npm run test  # Frontend
   pytest        # Backend
   ```

3. **Create Pull Request**
   - Clear title and description
   - Reference related issues
   - Add screenshots for UI changes

4. **Code Review**
   - Address reviewer feedback
   - Keep discussions professional
   - Update PR as needed

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Refactoring

## Testing
How was this tested?

## Checklist
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] Code follows style guidelines
- [ ] No breaking changes
```

---

## Reporting Bugs

### Before Submitting

1. Check existing issues
2. Try to reproduce on latest version
3. Gather relevant information

### Bug Report Template

```markdown
**Description:**
Clear description of the bug

**Steps to Reproduce:**
1. Go to...
2. Click on...
3. See error

**Expected Behavior:**
What should happen

**Actual Behavior:**
What actually happens

**Environment:**
- OS: Windows/Mac/Linux
- Python: 3.11
- Browser: Chrome 120

**Logs:**
```
Paste relevant logs
```
```

---

## Feature Requests

We welcome feature suggestions! Please:

1. Check if feature already requested
2. Describe the use case
3. Explain expected behavior
4. Consider implementation complexity

---

## Development Tips

### Running in Development Mode

```bash
# Backend with auto-reload
uvicorn main:app --reload

# Frontend with hot reload
npm run dev
```

### Debugging

**Backend:**
```python
import logging
logging.basicConfig(level=logging.DEBUG)
```

**Frontend:**
```typescript
console.log('Debug:', variable);
```

### Database Changes

```bash
# Backup database first
cp datascout.db datascout.db.backup

# Make schema changes
python init_db.py
```

---

## Community

- **Discussions:** GitHub Discussions
- **Issues:** GitHub Issues
- **Email:** contributors@datascout.ai

---

## Recognition

Contributors will be recognized in:
- CONTRIBUTORS.md file
- Release notes
- GitHub contributor badge

---

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

**Thank you for contributing to DataScout! 🎉**
