#ifndef IMAGE_SENSING_H_INCLUDED
#define IMAGE_SENSING_H_INCLUDED

int GetInterestingAreasList(struct Picture *picture);

void InitFaceRecognition(char * filename);
void CloseFaceRecognition();

#endif // IMAGE_SENSING_H_INCLUDED
