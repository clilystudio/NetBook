.class public abstract Lcom/ushaqi/zhuishushenqi/util/adutil/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/a;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/AdSplashImp;->a(Ljava/lang/reflect/InvocationHandler;)V

    .line 17
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)Z
.end method
