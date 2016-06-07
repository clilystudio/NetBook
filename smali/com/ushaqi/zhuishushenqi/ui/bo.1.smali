.class final Lcom/ushaqi/zhuishushenqi/ui/bo;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;JJJ)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    iput-wide p6, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->a:J

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    .line 148
    return-void
.end method

.method public final onTick(J)V
    .locals 7

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;J)J

    .line 136
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->a:J

    sub-long v0, p1, v0

    .line 137
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bo;->b:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    goto :goto_0
.end method
