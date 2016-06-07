.class public final Lcom/ushaqi/zhuishushenqi/event/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/Advert;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/Advert;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/B;->a:Lcom/ushaqi/zhuishushenqi/model/Advert;

    .line 17
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/event/B;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/model/Advert;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/B;->a:Lcom/ushaqi/zhuishushenqi/model/Advert;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/B;->b:Ljava/lang/String;

    return-object v0
.end method
