.class final Lcom/qq/e/comm/managers/plugin/PM$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    const-string v1, "com.qq.e.comm.plugin.POFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/comm/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
