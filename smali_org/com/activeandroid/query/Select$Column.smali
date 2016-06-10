.class public Lcom/activeandroid/query/Select$Column;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field alias:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/activeandroid/query/Select$Column;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/activeandroid/query/Select$Column;->alias:Ljava/lang/String;

    .line 68
    return-void
.end method
