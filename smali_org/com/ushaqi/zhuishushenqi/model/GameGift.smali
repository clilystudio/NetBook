.class public Lcom/ushaqi/zhuishushenqi/model/GameGift;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x76cfcbc63b4b29d9L


# instance fields
.field public _id:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public enabled:Z

.field public game:Lcom/ushaqi/zhuishushenqi/model/Game;

.field public left:I

.field public rangeFrom:Ljava/util/Date;

.field public rangeTo:Ljava/util/Date;

.field public title:Ljava/lang/String;

.field public total:I

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
