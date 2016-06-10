.class Lcom/maxthon/main/SmoothProgressDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/maxthon/main/SmoothProgressDrawable;


# direct methods
.method constructor <init>(Lcom/maxthon/main/SmoothProgressDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 262
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0}, Lcom/maxthon/main/SmoothProgressDrawable;->access$0(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v1

    const v2, 0x3c23d70a

    iget-object v3, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mSpeed:F
    invoke-static {v3}, Lcom/maxthon/main/SmoothProgressDrawable;->access$1(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/maxthon/main/SmoothProgressDrawable;->access$2(Lcom/maxthon/main/SmoothProgressDrawable;F)V

    .line 263
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0}, Lcom/maxthon/main/SmoothProgressDrawable;->access$0(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F
    invoke-static {v1}, Lcom/maxthon/main/SmoothProgressDrawable;->access$3(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maxthon/main/SmoothProgressDrawable;->access$4(Lcom/maxthon/main/SmoothProgressDrawable;Z)V

    .line 265
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0}, Lcom/maxthon/main/SmoothProgressDrawable;->access$0(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F
    invoke-static {v2}, Lcom/maxthon/main/SmoothProgressDrawable;->access$3(Lcom/maxthon/main/SmoothProgressDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/maxthon/main/SmoothProgressDrawable;->access$2(Lcom/maxthon/main/SmoothProgressDrawable;F)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    iget-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    # getter for: Lcom/maxthon/main/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/maxthon/main/SmoothProgressDrawable;->access$5(Lcom/maxthon/main/SmoothProgressDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/maxthon/main/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 268
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$1;->this$0:Lcom/maxthon/main/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 269
    return-void
.end method
