.class final Lcom/ushaqi/zhuishushenqi/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    mul-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->a(I)V

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->d()V

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/i;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v2

    mul-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
