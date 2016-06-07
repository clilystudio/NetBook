.class public final Lcom/ushaqi/zhuishushenqi/api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/api/d;->a:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 18
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 19
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/d;->b:Ljava/util/Date;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/d;->b:Ljava/util/Date;

    return-object v0
.end method
