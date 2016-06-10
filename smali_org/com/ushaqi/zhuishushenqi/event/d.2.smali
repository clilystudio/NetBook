.class public final Lcom/ushaqi/zhuishushenqi/event/d;
.super Lcom/ushaqi/zhuishushenqi/event/e;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/event/e;-><init>(Ljava/lang/String;)V

    .line 12
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/event/d;->a:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/event/d;->a:I

    return v0
.end method
