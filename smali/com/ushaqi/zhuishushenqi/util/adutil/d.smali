.class final Lcom/ushaqi/zhuishushenqi/util/adutil/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/adutil/c;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/c;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/d;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/d;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/c;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/c;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/util/adutil/b;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    .line 142
    return-void
.end method
