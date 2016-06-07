.class final Lcom/ushaqi/zhuishushenqi/ui/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/cl;

.field private synthetic b:J


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Lcom/ushaqi/zhuishushenqi/ui/cl;J)V
    .locals 1

    .prologue
    .line 150
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/cl;

    iput-wide p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ci;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ci;->a:Lcom/ushaqi/zhuishushenqi/ui/cl;

    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ci;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/cl;->a(J)V

    .line 154
    return-void
.end method
