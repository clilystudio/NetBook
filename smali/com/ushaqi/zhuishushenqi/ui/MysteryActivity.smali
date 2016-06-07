.class public Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/ushaqi/zhuishushenqi/ui/bq;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/CountDownTimer;

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->e:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->f:I

    .line 116
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bn;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/bn;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->o:Landroid/content/BroadcastReceiver;

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Z)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->f:I

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h:Landroid/os/CountDownTimer;

    .line 159
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    const-string v0, "KEY_SECRET_UNLOCKED"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 163
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->n:Z

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomEntranceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->finish()V

    .line 167
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->n:Z

    .line 169
    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3130
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->l:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/g;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/util/g;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 177
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/g;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/y;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->c:Lcom/ushaqi/zhuishushenqi/ui/bq;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bq;->a(Ljava/util/Collection;)V

    .line 1235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1236
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h()V

    goto :goto_0

    .line 1238
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->f()V

    .line 1239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1240
    :goto_1
    if-eqz v0, :cond_5

    .line 1241
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->k()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2102
    goto :goto_1

    .line 1242
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->g:Ljava/util/List;

    .line 2186
    if-eqz v0, :cond_7

    .line 2189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 2190
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getDownloadStatus()I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_6

    move v0, v1

    .line 1242
    :goto_2
    if-eqz v0, :cond_0

    .line 3124
    const-string v0, "first_tick_time"

    invoke-static {p0, v0, v4, v5}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->i:J

    .line 4087
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->f:I

    .line 4088
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3127
    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    move-wide v6, v4

    .line 3128
    :goto_3
    const-wide/32 v0, 0x2bf20

    sub-long v2, v0, v6

    .line 3129
    cmp-long v0, v2, v4

    if-gtz v0, :cond_9

    .line 3130
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->k()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 2194
    goto :goto_2

    .line 3127
    :cond_8
    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->i:J

    sub-long v6, v0, v2

    goto :goto_3

    .line 3132
    :cond_9
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bo;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/ui/bo;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;JJJ)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h:Landroid/os/CountDownTimer;

    .line 3150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(I)V

    .line 67
    const-string v0, "\u795e\u79d8\u529f\u80fd"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->b(Ljava/lang/String;)V

    .line 69
    const v0, 0x7f0c011e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030123

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bq;

    invoke-direct {v2, p0, p0}, Lcom/ushaqi/zhuishushenqi/ui/bq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->c:Lcom/ushaqi/zhuishushenqi/ui/bq;

    .line 73
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->c:Lcom/ushaqi/zhuishushenqi/ui/bq;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const v0, 0x7f0c03b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c03b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->b:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bp;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;B)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bp;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 107
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onPause()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->m:Z

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 111
    const-string v0, "first_tick_time"

    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->j:J

    invoke-static {p0, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->j()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onResume()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->m:Z

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "update_game_item_status"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->k:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->l()V

    .line 99
    :cond_0
    return-void
.end method
