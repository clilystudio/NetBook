.class final Lcom/mob/tools/log/e;
.super Lcom/mob/tools/log/d;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/log/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/log/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getSDKTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/log/e;->a:Ljava/lang/String;

    return-object v0
.end method
