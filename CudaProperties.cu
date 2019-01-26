#include <cmath>
#include <iostream>

int main(void)
{
    int devices = 0;

    cudaGetDeviceCount(&devices);

    cudaDeviceProp prop;

    for ( int i = 0; i < devices; ++i )
    {
        cudaGetDeviceProperties(&prop, i);

        std::cout << "=== Device number " << i << " ===" << std::endl;
        std::cout << "name = " << prop.name << std::endl;
        std::cout << "totalGlobalMem = " << prop.totalGlobalMem << std::endl;
        std::cout << "totalGlobalMem (MB) = " << prop.totalGlobalMem / 1024.0 / 1024 << std::endl;
        std::cout << "sharedMemPerBlock = " << prop.sharedMemPerBlock << std::endl;
        std::cout << "sharedMemPerBlock (kB) = " << prop.sharedMemPerBlock / 1024.0 << std::endl;
        std::cout << "regsPerBlock = " << prop.regsPerBlock << std::endl;
        std::cout << "warpSize = " << prop.warpSize << std::endl;
        std::cout << "memPitch = " << prop.memPitch << std::endl;
        std::cout << "maxThreadsPerBlock = " << prop.maxThreadsPerBlock << std::endl;
        std::cout << "maxThreadsDim[3] = [" 
                  << prop.maxThreadsDim[0] << ", "
                  << prop.maxThreadsDim[1] << ", "
                  << prop.maxThreadsDim[2] 
                  << "]" << std::endl;
        std::cout << "maxGridSize[3] = [" 
                  << prop.maxGridSize[0] << ", "
                  << prop.maxGridSize[1] << ", "
                  << prop.maxGridSize[2]
                  << "]" << std::endl;
        std::cout << "totalConstMem = " << prop.totalConstMem << std::endl;
        std::cout << "major = " << prop.major << std::endl;
        std::cout << "minor = " << prop.minor << std::endl;
        std::cout << "clockRate = " << prop.clockRate << std::endl;
        std::cout << "textureAlignment = " << prop.textureAlignment << std::endl;
        std::cout << "deviceOverlap = " << prop.deviceOverlap << std::endl;
        std::cout << "multiProcessorCount = " << prop.multiProcessorCount << std::endl;
        std::cout << "kernelExecTimeoutEnabled = " << prop.kernelExecTimeoutEnabled << std::endl;
        std::cout << "integrated = " << prop.integrated << std::endl;
        std::cout << "canMapHostMemory = " << prop.canMapHostMemory << std::endl;
        std::cout << "computeMode = " << prop.computeMode << std::endl;
        std::cout << "concurrentKernels = " << prop.concurrentKernels << std::endl;
        std::cout << "ECCEnabled = " << prop.ECCEnabled << std::endl;
        std::cout << "pciBusID = " << prop.pciBusID << std::endl;
        std::cout << "pciDeviceID = " << prop.pciDeviceID << std::endl;
        std::cout << "tccDriver = " << prop.tccDriver << std::endl; 
        std::cout << std::endl;
    }

    return 0;
}
