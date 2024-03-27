#! /bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
loader_cfg=${SCRIPT_DIR}/loader.cfg

rm -f ${loader_cfg}
touch ${loader_cfg}

echo "// Core" >> ${loader_cfg}
for f in core/*.cfg ; do
	echo "exec ttt/${f%.*}" >> ${loader_cfg}
done

echo "// Maps" >> ${loader_cfg}
for f in maps/*.cfg ; do
	echo "exec ttt/${f%.*}" >> ${loader_cfg}
done

echo "// Randomats" >> ${loader_cfg}
for f in randomats/*.cfg ; do
	echo "exec ttt/${f%.*}" >> ${loader_cfg}
done

echo "// Roles" >> ${loader_cfg}
for f in roles/*/*.cfg ; do
	echo "exec ttt/${f%.*}" >> ${loader_cfg}
done

