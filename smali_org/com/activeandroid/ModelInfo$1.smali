.class Lcom/activeandroid/ModelInfo$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/activeandroid/serializer/TypeSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/activeandroid/ModelInfo;


# direct methods
.method constructor <init>(Lcom/activeandroid/ModelInfo;)V
    .locals 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/activeandroid/ModelInfo$1;->this$0:Lcom/activeandroid/ModelInfo;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-class v0, Ljava/util/Calendar;

    new-instance v1, Lcom/activeandroid/serializer/CalendarSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/CalendarSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v0, Ljava/sql/Date;

    new-instance v1, Lcom/activeandroid/serializer/SqlDateSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/SqlDateSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v0, Ljava/util/Date;

    new-instance v1, Lcom/activeandroid/serializer/UtilDateSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/UtilDateSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v0, Ljava/io/File;

    new-instance v1, Lcom/activeandroid/serializer/FileSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/FileSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
