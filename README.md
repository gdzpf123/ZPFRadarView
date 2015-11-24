# ZPFRadarView

#import "CSTRadarStatisticsView.h"


- (void)viewDidLoad {
    [super viewDidLoad];


    
    
    NSMutableArray *modelsArr=[NSMutableArray array];
    for (int i=0 ; i<4 ; i++) {
        RadarModel *model=[[RadarModel alloc] init];
        model.name=[NSString stringWithFormat:@"name%d",i];
        model.currentValue=15.0;
        model.maxValue=40.0;
        [modelsArr addObject:model];
    }
    raderView=[[CSTRadarStatisticsView alloc] initWithFrame:CGRectMake(0, 0, 300, 300) modelsArr:modelsArr];

    [self.view addSubview:raderView];
    raderView.center=self.view.center;
    
//    self.view.backgroundColor=[UIColor orangeColor];
}

//刷新数据
- (IBAction)click:(id)sender {
    NSMutableArray *modelsArr=[NSMutableArray array];
    for (int i=0 ; i<4 ; i++) {
        RadarModel *model=[[RadarModel alloc] init];
        model.name=[NSString stringWithFormat:@"name%d",i];
        model.currentValue=arc4random()%40;
        model.maxValue=40.0;
        [modelsArr addObject:model];
    }
    
    
    raderView.modelsArr=modelsArr;
    [raderView refreshData];
    
    
    
}

