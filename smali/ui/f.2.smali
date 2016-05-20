.class Lcom/ushaqi/zhuishushenqi/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/f;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/f;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->b(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 92
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->i()V

    .line 93
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/b;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/f;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->b(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/f;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 96
    return-void
.end method
