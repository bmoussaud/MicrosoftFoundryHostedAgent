#!/bin/bash
# Initialize the development environment

set -e

echo "🚀 Initializing development environment..."

# Setup agent dependencies
echo "📦 Setting up agent dependencies..."
cd /workspaces/MicrosoftFoundryHostedAgent/agent
if [ ! -d ".venv" ]; then
    uv venv
fi
source .venv/bin/activate
uv sync
deactivate

# Setup infra dependencies
echo "📦 Setting up infra dependencies..."
cd /workspaces/MicrosoftFoundryHostedAgent/infra
if [ ! -d ".venv" ]; then
    uv venv
fi
source .venv/bin/activate
uv sync
deactivate

echo "✅ Development environment initialized successfully!"
echo "💡 To activate the virtual environment for agent: cd agent && source .venv/bin/activate"
echo "💡 To activate the virtual environment for infra: cd infra && source .venv/bin/activate"
